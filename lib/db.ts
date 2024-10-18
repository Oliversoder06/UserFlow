// lib/db.ts
import mysql from 'mysql2/promise';

// Create a connection pool
const pool = mysql.createPool({
    // env variables
    host: process.env.DB_HOST || 'localhost',
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD!,
    database: process.env.DB_NAME || 'UserFlow',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
});

export async function query(sql: string, values?: any) {
    const [rows] = await pool.query(sql, values);
    return rows;
}
