/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        system: ['system-ui', '-apple-system', 'sans-serif'],
      },
    },
  },
  plugins: [],
}