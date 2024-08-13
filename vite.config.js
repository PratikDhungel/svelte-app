import { sveltekit } from '@sveltejs/kit/vite'
import { defineConfig } from 'vite'

export default defineConfig({
  plugins: [sveltekit()],
  server: {
    host: '0.0.0.0', // This makes the server accessible externally
    port: 5173,
    watch: {
      usePolling: true, // Necessary for some Docker setups
    },
  },
})
