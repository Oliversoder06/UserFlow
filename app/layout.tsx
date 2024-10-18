import type { Metadata } from "next";
import "./globals.css";
import Navbar from "@/components/Navbar";

export const metadata: Metadata = {
  title: "UserFlow",
  description: "A simple project for user creation",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body
        className={`bg-[#D4D4D4]`}
      >
        <header>
          <Navbar />
        </header>
        {children}
      </body>
    </html>
  );
}
