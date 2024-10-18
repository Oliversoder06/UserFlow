import type { Metadata } from "next";
import "./globals.css";
import { ReactNode } from "react";

export const metadata: Metadata = {
  title: "UserFlow",
  description: "A simple project for user creation",
};


const RootLayout = ({ children }: { children: ReactNode }) => {
  return (
    <html lang="en">
      <body className={`bg-[#D4D4D4]`}>
        {children}
      </body>
    </html>
  );
}

export default RootLayout;
