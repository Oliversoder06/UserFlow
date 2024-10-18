// app/api/populate/route.ts
import { NextResponse } from 'next/server';
import { query } from '@/lib/db';
import { v4 as uuidv4 } from 'uuid';

// Sample data arrays for generating random users and comments
const firstNames = ['John', 'Jane', 'Alex', 'Emily', 'Chris'];
const lastNames = ['Doe', 'Smith', 'Johnson', 'Brown', 'Lee'];
const cardNames = ['Platinum', 'Gold', 'Silver', 'Bronze', 'Diamond'];
const comments = ['This is awesome!', 'Love it!', 'Fantastic!', 'Amazing work!', 'Keep it up!'];

// Helper function to generate a random item from an array
const getRandomItem = (arr: string[]) => arr[Math.floor(Math.random() * arr.length)];

// Generate a random username
const generateRandomUsername = () => {
    return `${getRandomItem(firstNames)}${getRandomItem(lastNames)}${Math.floor(Math.random() * 1000)}`;
};

// Generate a random card name
const generateRandomCardName = () => {
    return `${getRandomItem(cardNames)} Card`;
};

// POST request to insert random users, cards, and comments
export async function POST(request: Request) {
    const connection = await query('START TRANSACTION');  // Start a transaction

    try {
        const numRecords = 5;  // Number of users, cards, and comments to generate
        let users = [];
        let cards = [];
        let userCardRelations = [];

        for (let i = 0; i < numRecords; i++) {
            // Generate random data for users
            const userId = uuidv4();  // Generate random UUID for user_id
            const username = generateRandomUsername();
            const profilePicture = `https://randomuser.me/api/portraits/lego/${Math.floor(Math.random() * 10)}.jpg`;

            // Generate random data for cards
            const cardId = uuidv4();  // Generate random UUID for card_id
            const cardName = generateRandomCardName();

            // Insert generated users and cards
            await query('INSERT INTO User (id, username, profile_picture) VALUES (?, ?, ?)', [userId, username, profilePicture]);
            await query('INSERT INTO Card (card_id, card_name) VALUES (?, ?)', [cardId, cardName]);

            // Create relation between user and card
            await query('INSERT INTO UserCard (user_id, card_id) VALUES (?, ?)', [userId, cardId]);

            // Optional: insert random comment related to the user
            // await query('INSERT INTO Comments (user_id, comment_text) VALUES (?, ?)', [userId, generateRandomComment()]);
        }

        // Commit the transaction after all successful inserts
        await query('COMMIT');

        // Return success response
        return NextResponse.json({ message: `${numRecords} users, cards, and relations inserted successfully.` }, { status: 200 });
    } catch (error) {
        // Roll back the transaction if something goes wrong
        await query('ROLLBACK');
        console.error('Error inserting random data:', error);
        return NextResponse.json({ message: 'Failed to insert random data.', error }, { status: 500 });
    }
}
