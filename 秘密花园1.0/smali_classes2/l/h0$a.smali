.class public Ll/h0$a;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/h0;->b(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ll/d0;

.field public final b:[Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Ll/h0;


# direct methods
.method public constructor <init>(Ll/h0;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/h0$a;->d:Ll/h0;

    iput-object p2, p0, Ll/h0$a;->c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Ll/d0;->b:Ll/d0;

    .line 3
    iput-object p1, p0, Ll/h0$a;->a:Ll/d0;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Ll/h0$a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Ll/h0$a;->a:Ll/d0;

    .line 4
    iget-boolean v0, v0, Ll/d0;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Ll/h0$a;->a:Ll/d0;

    iget-object v3, p0, Ll/h0$a;->c:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 6
    const-class v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    .line 9
    invoke-virtual {v0, p2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :cond_3
    iget-object p1, p0, Ll/h0$a;->d:Ll/h0;

    invoke-virtual {p1, p2}, Ll/h0;->c(Ljava/lang/reflect/Method;)Ll/i0;

    move-result-object p1

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    iget-object p3, p0, Ll/h0$a;->b:[Ljava/lang/Object;

    :goto_1
    check-cast p1, Ll/o;

    .line 14
    new-instance p2, Ll/y;

    iget-object v0, p1, Ll/o;->a:Ll/f0;

    iget-object v1, p1, Ll/o;->b:Li/f$a;

    iget-object v2, p1, Ll/o;->c:Ll/l;

    invoke-direct {p2, v0, p3, v1, v2}, Ll/y;-><init>(Ll/f0;[Ljava/lang/Object;Li/f$a;Ll/l;)V

    .line 15
    invoke-virtual {p1, p2, p3}, Ll/o;->b(Ll/d;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
