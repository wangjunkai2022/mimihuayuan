.class public final synthetic Ll/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ll/m$b$a;

.field public final synthetic b:Ll/f;

.field public final synthetic c:Ll/g0;


# direct methods
.method public synthetic constructor <init>(Ll/m$b$a;Ll/f;Ll/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/a;->a:Ll/m$b$a;

    iput-object p2, p0, Ll/a;->b:Ll/f;

    iput-object p3, p0, Ll/a;->c:Ll/g0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ll/a;->a:Ll/m$b$a;

    iget-object v1, p0, Ll/a;->b:Ll/f;

    iget-object v2, p0, Ll/a;->c:Ll/g0;

    invoke-virtual {v0, v1, v2}, Ll/m$b$a;->d(Ll/f;Ll/g0;)V

    return-void
.end method
