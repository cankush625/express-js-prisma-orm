/*
  Warnings:

  - A unique constraint covering the columns `[authorId,title]` on the table `Blog` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `title` to the `Blog` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Blog" ADD COLUMN     "title" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Blog_authorId_title_key" ON "Blog"("authorId", "title");
