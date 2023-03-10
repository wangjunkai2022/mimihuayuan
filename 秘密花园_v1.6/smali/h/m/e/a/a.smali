.class public abstract Lh/m/e/a/a;
.super Ljava/lang/Object;
.source "ContinuationImpl.kt"

# interfaces
.implements Lh/m/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/m/a<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lh/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/m/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/m/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/m/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/m/e/a/a;->a:Lh/m/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1
    iget-object v2, v0, Lh/m/e/a/a;->a:Lh/m/a;

    if-eqz v2, :cond_4

    .line 2
    :try_start_0
    move-object v3, v0

    check-cast v3, Ll/x;

    .line 3
    iput-object p1, v3, Ll/x;->d:Ljava/lang/Object;

    iget p1, v3, Ll/x;->e:I

    const/high16 v4, -0x80000000

    or-int/2addr p1, v4

    iput p1, v3, Ll/x;->e:I

    invoke-static {v1, v3}, Lj/b;->z(Ljava/lang/Exception;Lh/m/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    sget-object v3, Lh/m/d/a;->a:Lh/m/d/a;

    if-ne p1, v3, :cond_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lc/a/a/b/g/h;->B(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    :cond_0
    check-cast v0, Lh/m/e/a/c;

    .line 7
    iget-object v3, v0, Lh/m/e/a/c;->b:Lh/m/a;

    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lh/m/e/a/c;->getContext()Lh/m/c;

    move-result-object v4

    sget-object v5, Lh/m/b;->a:Lh/m/b$a;

    invoke-interface {v4, v5}, Lh/m/c;->c(Lh/m/c$b;)Lh/m/c$a;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Lh/m/b;

    invoke-interface {v4, v3}, Lh/m/b;->a(Lh/m/a;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    .line 9
    :cond_2
    :goto_1
    sget-object v1, Lh/m/e/a/b;->a:Lh/m/e/a/b;

    iput-object v1, v0, Lh/m/e/a/c;->b:Lh/m/a;

    .line 10
    instance-of v0, v2, Lh/m/e/a/a;

    if-eqz v0, :cond_3

    .line 11
    move-object v0, v2

    check-cast v0, Lh/m/e/a/a;

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v2, p1}, Lh/m/a;->a(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_4
    invoke-static {}, Lh/o/c/g;->e()V

    throw v1

    :cond_5
    const-string p1, "frame"

    .line 14
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const-string v0, "Continuation at "

    .line 1
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lh/m/e/a/d;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lh/m/e/a/d;

    if-eqz v2, :cond_a

    .line 3
    invoke-interface {v2}, Lh/m/e/a/d;->v()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_9

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-string v7, "field"

    .line 5
    invoke-static {v6, v7}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_0

    move-object v6, v1

    :cond_0
    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    sub-int/2addr v6, v4

    goto :goto_1

    :catch_0
    const/4 v6, -0x1

    :goto_1
    if-gez v6, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {v2}, Lh/m/e/a/d;->l()[I

    move-result-object v4

    aget v5, v4, v6

    .line 8
    :goto_2
    sget-object v4, Lh/m/e/a/e;->b:Lh/m/e/a/e$a;

    if-eqz v4, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    :try_start_1
    const-class v4, Ljava/lang/Class;

    const-string v6, "getModule"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "java.lang.Module"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getDescriptor"

    new-array v8, v3, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "java.lang.module.ModuleDescriptor"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "name"

    new-array v9, v3, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 14
    new-instance v8, Lh/m/e/a/e$a;

    invoke-direct {v8, v4, v6, v7}, Lh/m/e/a/e$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v8, Lh/m/e/a/e;->b:Lh/m/e/a/e$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    goto :goto_3

    .line 15
    :catch_1
    sget-object v4, Lh/m/e/a/e;->a:Lh/m/e/a/e$a;

    sput-object v4, Lh/m/e/a/e;->b:Lh/m/e/a/e$a;

    .line 16
    :goto_3
    sget-object v6, Lh/m/e/a/e;->a:Lh/m/e/a/e$a;

    if-ne v4, v6, :cond_4

    goto :goto_6

    .line 17
    :cond_4
    iget-object v6, v4, Lh/m/e/a/e$a;->a:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 18
    iget-object v7, v4, Lh/m/e/a/e$a;->b:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 19
    iget-object v4, v4, Lh/m/e/a/e$a;->c:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v3

    :goto_5
    check-cast v1, Ljava/lang/String;

    :cond_7
    :goto_6
    if-nez v1, :cond_8

    .line 20
    invoke-interface {v2}, Lh/m/e/a/d;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lh/m/e/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    :goto_7
    new-instance v3, Ljava/lang/StackTraceElement;

    invoke-interface {v2}, Lh/m/e/a/d;->m()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lh/m/e/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v3

    goto :goto_8

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Debug metadata version mismatch. Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Please update the Kotlin standard library."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    goto :goto_9

    .line 23
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
