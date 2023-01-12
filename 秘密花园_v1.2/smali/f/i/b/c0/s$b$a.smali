.class public Lf/i/b/c0/s$b$a;
.super Lf/i/b/c0/s$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/b/c0/s$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/c0/s<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i/b/c0/s$b;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lf/i/b/c0/s$b;->a:Lf/i/b/c0/s;

    invoke-direct {p0, p1}, Lf/i/b/c0/s$d;-><init>(Lf/i/b/c0/s;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/i/b/c0/s$d;->a()Lf/i/b/c0/s$e;

    move-result-object v0

    return-object v0
.end method
