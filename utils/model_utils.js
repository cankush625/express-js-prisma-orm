import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// Exclude keys from user
function exclude(user, keys) {
    return Object.fromEntries(
        Object.entries(user).filter(([key]) => !keys.includes(key))
    );
}

async function get_user_by_id(id) {
    const user = await prisma.user.findUnique({ where: { id: 1 } });
    return exclude(user, ["password"]);
}
