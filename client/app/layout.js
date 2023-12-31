import { TransactionProvider } from "@/context/TransactionContext";
import "./globals.css";
import { Inter } from "next/font/google";

const inter = Inter({ subsets: ["latin"] });

export const metadata = {
  title: "Krypto Dapp",
  description: "A Modern Web3 App",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <TransactionProvider>{children}</TransactionProvider>
      </body>
    </html>
  );
}
