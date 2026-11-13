const steps = [
  { n: '1', title: 'Merchant publishes a plan', body: 'Pick a price and a billing period, for example 9.99 USDC every month.' },
  { n: '2', title: 'Subscriber approves and pays', body: 'The first period is paid at once. A spending allowance covers later periods.' },
  { n: '3', title: 'Anyone triggers due payments', body: 'When a period ends, any keeper can call charge. Funds go straight to the merchant.' },
];

export default function HowItWorks() {
  return (
    <ol className="mb-8 grid gap-4 sm:grid-cols-3" aria-label="How PayCycle works">
      {steps.map((s) => (
        <li key={s.n} className="rounded-xl border-2 border-dashed border-ink/30 p-4">
          <span className="grid h-7 w-7 place-items-center rounded-full bg-ink font-display text-sm font-bold text-paper">{s.n}</span>
          <h2 className="mt-3 text-base font-bold">{s.title}</h2>
          <p className="mt-1 text-sm text-ink/70">{s.body}</p>
        </li>
      ))}
    </ol>
  );
}
