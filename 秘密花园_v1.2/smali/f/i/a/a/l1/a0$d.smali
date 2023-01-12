.class public final Lf/i/a/a/l1/a0$d;
.super Lf/i/a/a/l1/a0$c;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/l1/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf/i/a/a/l1/p;)V
    .locals 1

    const-string v0, "Invalid content type: "

    .line 1
    invoke-static {v0, p1}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/lang/String;Lf/i/a/a/l1/p;I)V

    return-void
.end method
