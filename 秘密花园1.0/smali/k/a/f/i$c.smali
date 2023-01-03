.class public Lk/a/f/i$c;
.super Lk/a/f/i;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lk/a/f/i;-><init>(Lk/a/f/i$a;)V

    .line 2
    sget-object v0, Lk/a/f/i$j;->e:Lk/a/f/i$j;

    iput-object v0, p0, Lk/a/f/i;->a:Lk/a/f/i$j;

    return-void
.end method


# virtual methods
.method public g()Lk/a/f/i;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lk/a/f/i$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/a/f/i$c;->b:Ljava/lang/String;

    return-object v0
.end method
