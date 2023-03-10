.class public Lf/i/b/c0/a0/s$a;
.super Lf/i/b/z;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/b/c0/a0/s;->a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/i/b/z<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lf/i/b/c0/a0/s;


# direct methods
.method public constructor <init>(Lf/i/b/c0/a0/s;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/b/c0/a0/s$a;->b:Lf/i/b/c0/a0/s;

    iput-object p2, p0, Lf/i/b/c0/a0/s$a;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/a;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/s$a;->b:Lf/i/b/c0/a0/s;

    iget-object v0, v0, Lf/i/b/c0/a0/s;->b:Lf/i/b/z;

    invoke-virtual {v0, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lf/i/b/c0/a0/s$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lf/i/b/w;

    const-string v1, "Expected a "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lf/i/b/c0/a0/s$a;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/i/b/w;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/c;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/s$a;->b:Lf/i/b/c0/a0/s;

    iget-object v0, v0, Lf/i/b/c0/a0/s;->b:Lf/i/b/z;

    invoke-virtual {v0, p1, p2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    return-void
.end method
