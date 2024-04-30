/*
  Warnings:

  - You are about to drop the `Data` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Data" DROP CONSTRAINT "Data_user_id_fkey";

-- DropIndex
DROP INDEX "User_password_key";

-- DropTable
DROP TABLE "Data";

-- CreateTable
CREATE TABLE "Organisation" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER,
    "companyName" TEXT NOT NULL,
    "noUser" INTEGER NOT NULL,
    "noProduct" INTEGER NOT NULL,
    "percentage" TEXT NOT NULL,
    "attachment" TEXT,
    "uploadedDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "authorId" INTEGER,

    CONSTRAINT "Organisation_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Organisation" ADD CONSTRAINT "Organisation_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
