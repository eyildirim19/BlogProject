using Microsoft.EntityFrameworkCore.Migrations;

namespace BlogProject.Migrations
{
    public partial class CommentRelation : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "CommentID",
                table: "Comments",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Comments_CommentID",
                table: "Comments",
                column: "CommentID");

            migrationBuilder.AddForeignKey(
                name: "FK_Comments_Comments_CommentID",
                table: "Comments",
                column: "CommentID",
                principalTable: "Comments",
                principalColumn: "ID",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Comments_Comments_CommentID",
                table: "Comments");

            migrationBuilder.DropIndex(
                name: "IX_Comments_CommentID",
                table: "Comments");

            migrationBuilder.DropColumn(
                name: "CommentID",
                table: "Comments");
        }
    }
}
