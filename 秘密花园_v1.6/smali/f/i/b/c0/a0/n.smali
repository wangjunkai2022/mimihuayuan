.class public final Lf/i/b/c0/a0/n;
.super Lf/i/b/z;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf/i/b/z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/b/j;

.field public final b:Lf/i/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/b/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lf/i/b/j;Lf/i/b/z;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/j;",
            "Lf/i/b/z<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lf/i/b/z;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/b/c0/a0/n;->a:Lf/i/b/j;

    .line 3
    iput-object p2, p0, Lf/i/b/c0/a0/n;->b:Lf/i/b/z;

    .line 4
    iput-object p3, p0, Lf/i/b/c0/a0/n;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Lf/i/b/e0/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/n;->b:Lf/i/b/z;

    invoke-virtual {v0, p1}, Lf/i/b/z;->a(Lf/i/b/e0/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lf/i/b/e0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/b/e0/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/b/c0/a0/n;->b:Lf/i/b/z;

    .line 2
    iget-object v1, p0, Lf/i/b/c0/a0/n;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lf/i/b/c0/a0/n;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v0, p0, Lf/i/b/c0/a0/n;->a:Lf/i/b/j;

    .line 7
    new-instance v2, Lf/i/b/d0/a;

    invoke-direct {v2, v1}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    invoke-virtual {v0, v2}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lf/i/b/c0/a0/j$a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lf/i/b/c0/a0/n;->b:Lf/i/b/z;

    instance-of v2, v1, Lf/i/b/c0/a0/j$a;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Lf/i/b/z;->b(Lf/i/b/e0/c;Ljava/lang/Object;)V

    return-void
.end method
