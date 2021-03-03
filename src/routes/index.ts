import { Router } from 'express';
const routes = Router();

routes
    .get('/', (_, res) => {
        return res.json({
            success: true
        });
    });

export default routes;