import react from '@vitejs/plugin-react';
import { defineConfig } from 'vitest/config';

export default defineConfig({
  base: process.env.VITE_BASE ?? '/',
  plugins: [react()],
  define: { global: 'globalThis' },
  server: { port: 5174, host: true },
  test: { environment: 'node' },
});
