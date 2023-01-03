.class public Lf/i/b/c0/s$c$a;
.super Lf/i/b/c0/s$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/b/c0/s$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/c0/s<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i/b/c0/s$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lf/i/b/c0/s$c;->a:Lf/i/b/c0/s;

    invoke-direct {p0, p1}, Lf/i/b/c0/s$d;-><init>(Lf/i/b/c0/s;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/i/b/c0/s$d;->a()Lf/i/b/c0/s$e;

    move-result-object v0

    iget-object v0, v0, Lf/i/b/c0/s$e;->f:Ljava/lang/Object;

    return-object v0
.end method
