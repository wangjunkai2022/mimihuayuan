.class public final Ll/n0/a/a;
.super Ll/l$a;
.source "GsonConverterFactory.java"


# instance fields
.field public final a:Lf/i/b/j;


# direct methods
.method public constructor <init>(Lf/i/b/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/l$a;-><init>()V

    .line 2
    iput-object p1, p0, Ll/n0/a/a;->a:Lf/i/b/j;

    return-void
.end method

.method public static c()Ll/n0/a/a;
    .locals 2

    .line 1
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    .line 2
    new-instance v1, Ll/n0/a/a;

    invoke-direct {v1, v0}, Ll/n0/a/a;-><init>(Lf/i/b/j;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Ll/h0;)Ll/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/h0;",
            ")",
            "Ll/l<",
            "*",
            "Li/g0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ll/n0/a/a;->a:Lf/i/b/j;

    .line 2
    new-instance p3, Lf/i/b/d0/a;

    invoke-direct {p3, p1}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {p2, p3}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object p1

    .line 4
    new-instance p2, Ll/n0/a/b;

    iget-object p3, p0, Ll/n0/a/a;->a:Lf/i/b/j;

    invoke-direct {p2, p3, p1}, Ll/n0/a/b;-><init>(Lf/i/b/j;Lf/i/b/z;)V

    return-object p2
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/h0;)Ll/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/h0;",
            ")",
            "Ll/l<",
            "Li/i0;",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ll/n0/a/a;->a:Lf/i/b/j;

    .line 2
    new-instance p3, Lf/i/b/d0/a;

    invoke-direct {p3, p1}, Lf/i/b/d0/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {p2, p3}, Lf/i/b/j;->f(Lf/i/b/d0/a;)Lf/i/b/z;

    move-result-object p1

    .line 4
    new-instance p2, Ll/n0/a/c;

    iget-object p3, p0, Ll/n0/a/a;->a:Lf/i/b/j;

    invoke-direct {p2, p3, p1}, Ll/n0/a/c;-><init>(Lf/i/b/j;Lf/i/b/z;)V

    return-object p2
.end method
