.class public final Ll/c;
.super Ll/l$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/c$d;,
        Ll/c$a;,
        Ll/c$c;,
        Ll/c$b;,
        Ll/c$e;,
        Ll/c$f;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll/l$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll/c;->a:Z

    return-void
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
    const-class p2, Li/g0;

    invoke-static {p1}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Ll/c$b;->a:Ll/c$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
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
    const-class p3, Li/i0;

    if-ne p1, p3, :cond_1

    .line 2
    const-class p1, Ll/o0/u;

    invoke-static {p2, p1}, Ll/l0;->i([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ll/c$c;->a:Ll/c$c;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ll/c$a;->a:Ll/c$a;

    :goto_0
    return-object p1

    .line 5
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 6
    sget-object p1, Ll/c$f;->a:Ll/c$f;

    return-object p1

    .line 7
    :cond_2
    iget-boolean p2, p0, Ll/c;->a:Z

    if-eqz p2, :cond_3

    .line 8
    :try_start_0
    const-class p2, Lh/i;

    if-ne p1, p2, :cond_3

    .line 9
    sget-object p1, Ll/c$e;->a:Ll/c$e;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Ll/c;->a:Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
