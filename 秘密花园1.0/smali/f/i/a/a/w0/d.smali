.class public final synthetic Lf/i/a/a/w0/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/w0/o$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/w0/o$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/d;->a:Lf/i/a/a/w0/o$a;

    iput p2, p0, Lf/i/a/a/w0/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/i/a/a/w0/d;->a:Lf/i/a/a/w0/o$a;

    iget v1, p0, Lf/i/a/a/w0/d;->b:I

    invoke-virtual {v0, v1}, Lf/i/a/a/w0/o$a;->b(I)V

    return-void
.end method
