.class public final Lf/i/a/a/e1/k$b;
.super Ljava/lang/Object;
.source "DefaultDownloadIndex.java"

# interfaces
.implements Lf/i/a/a/e1/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lf/i/a/a/e1/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public d()Lf/i/a/a/e1/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/e1/k$b;->a:Landroid/database/Cursor;

    .line 2
    invoke-static {v0}, Lf/i/a/a/e1/k;->d(Landroid/database/Cursor;)Lf/i/a/a/e1/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic moveToNext()Z
    .locals 1

    invoke-static {p0}, Lf/i/a/a/e1/n;->a(Lf/i/a/a/e1/o;)Z

    move-result v0

    return v0
.end method
