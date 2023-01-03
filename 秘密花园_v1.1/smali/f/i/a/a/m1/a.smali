.class public final synthetic Lf/i/a/a/m1/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/m1/m$b;

.field public final synthetic b:Lf/i/a/a/m1/m$a;


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/m1/m$b;Lf/i/a/a/m1/m$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/m1/a;->a:Lf/i/a/a/m1/m$b;

    iput-object p2, p0, Lf/i/a/a/m1/a;->b:Lf/i/a/a/m1/m$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/m1/a;->a:Lf/i/a/a/m1/m$b;

    iget-object v1, p0, Lf/i/a/a/m1/a;->b:Lf/i/a/a/m1/m$a;

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/m$b;->a(Lf/i/a/a/m1/m$a;)V

    return-void
.end method
