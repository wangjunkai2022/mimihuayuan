.class public final synthetic Ll/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll/m$b$a;

.field public final synthetic b:Ll/f;

.field public final synthetic c:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ll/m$b$a;Ll/f;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/b;->a:Ll/m$b$a;

    iput-object p2, p0, Ll/b;->b:Ll/f;

    iput-object p3, p0, Ll/b;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ll/b;->a:Ll/m$b$a;

    iget-object v1, p0, Ll/b;->b:Ll/f;

    iget-object v2, p0, Ll/b;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Ll/m$b$a;->c(Ll/f;Ljava/lang/Throwable;)V

    return-void
.end method
