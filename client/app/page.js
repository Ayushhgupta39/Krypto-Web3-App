import Footer from '@/components/Footer'
import Navbar from '@/components/Navbar'
import Services from '@/components/Services'
import Transactions from '@/components/Transactions'
import Welcome from '@/components/Welcome'

export default function Home() {
  return (
    <main className="min-h-screen">
      <div className="gradient-bg-welcome">
        <Navbar />
        <Welcome />
      </div>
      <Services />
      <Transactions />
      <Footer />
    </main>
  )
}
