.class public final Ll/m0/a/j;
.super Ll/e$a;
.source "RxJavaCallAdapterFactory.java"


# instance fields
.field public final a:Lm/g;

.field public final b:Z


# direct methods
.method public constructor <init>(Lm/g;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/e$a;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ll/m0/a/j;->a:Lm/g;

    .line 3
    iput-boolean p2, p0, Ll/m0/a/j;->b:Z

    return-void
.end method

.method public static b()Ll/m0/a/j;
    .locals 3

    .line 1
    new-instance v0, Ll/m0/a/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll/m0/a/j;-><init>(Lm/g;Z)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/h0;)Ll/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/h0;",
            ")",
            "Ll/e<",
            "**>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 2
    const-class p3, Lm/h;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 3
    :goto_0
    const-class p3, Lm/c;

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 4
    :goto_1
    const-class v2, Lm/e;

    if-eq p2, v2, :cond_2

    if-nez v8, :cond_2

    if-nez p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    new-instance p1, Ll/m0/a/i;

    const-class v1, Ljava/lang/Void;

    iget-object v2, p0, Ll/m0/a/j;->a:Lm/g;

    iget-boolean v3, p0, Ll/m0/a/j;->b:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ll/m0/a/i;-><init>(Ljava/lang/reflect/Type;Lm/g;ZZZZZ)V

    return-object p1

    .line 6
    :cond_3
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_5

    if-eqz v8, :cond_4

    const-string p1, "Single"

    goto :goto_2

    :cond_4
    const-string p1, "Observable"

    .line 7
    :goto_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<? extends Foo>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_5
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 9
    invoke-static {v1, p1}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ll/l0;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 11
    const-class p3, Ll/g0;

    if-ne p2, p3, :cond_7

    .line 12
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_6

    .line 13
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 14
    invoke-static {v1, p1}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_3

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    const-class p3, Ll/m0/a/g;

    if-ne p2, p3, :cond_9

    .line 17
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_8

    .line 18
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 19
    invoke-static {v1, p1}, Ll/l0;->e(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_3
    move-object v3, p1

    move v6, v0

    const/4 v7, 0x0

    goto :goto_4

    .line 20
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move-object v3, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 21
    :goto_4
    new-instance p1, Ll/m0/a/i;

    iget-object v4, p0, Ll/m0/a/j;->a:Lm/g;

    iget-boolean v5, p0, Ll/m0/a/j;->b:Z

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Ll/m0/a/i;-><init>(Ljava/lang/reflect/Type;Lm/g;ZZZZZ)V

    return-object p1
.end method
