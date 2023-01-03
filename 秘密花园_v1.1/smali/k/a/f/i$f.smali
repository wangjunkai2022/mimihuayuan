.class public final Lk/a/f/i$f;
.super Lk/a/f/i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lk/a/f/i;-><init>(Lk/a/f/i$a;)V

    .line 2
    sget-object v0, Lk/a/f/i$j;->f:Lk/a/f/i$j;

    iput-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    return-void
.end method


# virtual methods
.method public g()Lk/a/f/i;
    .locals 0

    return-object p0
.end method
