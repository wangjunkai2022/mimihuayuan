.class public final synthetic Lf/i/a/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lf/i/a/a/o$b;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lf/i/a/a/c;->a:Z

    iput p2, p0, Lf/i/a/a/c;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lf/i/a/a/l0$b;)V
    .locals 2

    iget-boolean v0, p0, Lf/i/a/a/c;->a:Z

    iget v1, p0, Lf/i/a/a/c;->b:I

    invoke-static {v0, v1, p1}, Lf/i/a/a/y;->L(ZILf/i/a/a/l0$b;)V

    return-void
.end method
