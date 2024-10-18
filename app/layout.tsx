import type { Metadata } from "next";
import "./globals.css";

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
        {children}
      </body>
    </html>
  );
}
