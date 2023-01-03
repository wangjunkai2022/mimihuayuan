.class public final synthetic Lf/i/a/a/e1/n;
.super Ljava/lang/Object;
.source "DownloadCursor.java"


# direct methods
.method public static a(Lf/i/a/a/e1/o;)Z
    .locals 2
    .param p0, "_this"    # Lf/i/a/a/e1/o;

    .line 1
    move-object v0, p0

    check-cast v0, Lf/i/a/a/e1/k$b;

    .line 2
    iget-object v1, v0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    iget-object v0, v0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
