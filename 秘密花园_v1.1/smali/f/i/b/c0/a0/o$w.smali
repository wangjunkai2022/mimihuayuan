.class public final Lf/i/b/c0/a0/o$w;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lf/i/b/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/b/c0/a0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/j;Lf/i/b/d0/a;)Lf/i/b/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/i/b/j;",
            "Lf/i/b/d0/a<",
            "TT;>;)",
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lf/i/b/d0/a;->a:Ljava/lang/Class;

    .line 2
    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-class p2, Ljava/lang/Enum;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 5
    :cond_1
    new-instance p2, Lf/i/b/c0/a0/o$e0;

    invoke-direct {p2, p1}, Lf/i/b/c0/a0/o$e0;-><init>(Ljava/lang/Class;)V

    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
