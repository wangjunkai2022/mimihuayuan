.class public final Lf/i/a/a/e1/q$c$a;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lf/i/a/a/j1/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/q$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/e1/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lf/i/a/a/j1/j$a;Lf/i/a/a/l1/g;)[Lf/i/a/a/j1/j;
    .locals 4

    .line 1
    array-length p2, p1

    new-array p2, p2, [Lf/i/a/a/j1/j;

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Lf/i/a/a/e1/q$c;

    aget-object v2, p1, v0

    iget-object v2, v2, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    aget-object v3, p1, v0

    iget-object v3, v3, Lf/i/a/a/j1/j$a;->b:[I

    invoke-direct {v1, v2, v3}, Lf/i/a/a/e1/q$c;-><init>(Lf/i/a/a/h1/o0;[I)V

    :goto_1
    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
