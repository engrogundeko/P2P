/*
  Warnings:

  - You are about to drop the column `user_id` on the `Organisation` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Organisation" DROP CONSTRAINT "Organisation_user_id_fkey";

-- AlterTable
ALTER TABLE "Organisation" DROP COLUMN "user_id",
ADD COLUMN     "type" "UserRole",
ALTER COLUMN "percentage" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Organisation" ADD CONSTRAINT "Organisation_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
