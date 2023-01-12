.class public final Lf/i/b/c0/a0/s;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lf/i/b/a0;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lf/i/b/z;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lf/i/b/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/b/c0/a0/s;->a:Ljava/lang/Class;

    iput-object p2, p0, Lf/i/b/c0/a0/s;->b:Lf/i/b/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/b/j;",
            "Lf/i/b/d0/a<",
            "TT2;>;)",
            "Lf/i/b/z<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lf/i/b/d0/a;->a:Ljava/lang/Class;

    .line 2
    iget-object p2, p0, Lf/i/b/c0/a0/s;->a:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Lf/i/b/c0/a0/s$a;

    invoke-direct {p2, p0, p1}, Lf/i/b/c0/a0/s$a;-><init>(Lf/i/b/c0/a0/s;Ljava/lang/Class;)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Factory[typeHierarchy="

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/i/b/c0/a0/s;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/i/b/c0/a0/s;->b:Lf/i/b/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
