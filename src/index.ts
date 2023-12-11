/**
 * Welcome to Cloudflare Workers! This is your first worker.
 *
 * - Run `npm run dev` in your terminal to start a development server
 * - Open a browser tab at http://localhost:8787/ to see your worker in action
 * - Run `npm run deploy` to publish your worker
 *
 * Learn more at https://developers.cloudflare.com/workers/
 *
**/
import { Client } from '@neondatabase/serverless';
interface Env { DATABASE_URL: string; }

export default {
  async fetch(request: Request, env: Env, ctx: ExecutionContext) {
    const client = new Client(env.DATABASE_URL);
    await client.connect();
    const { rows } = await client.query(`
    select * from products',
    );
    ctx.waitUntil(client.end());  // this doesn’t hold up the response
    return new Response(JSON.stringify(rows), {
      headers: { "content-type": "application/json"},
    });
  }
}
