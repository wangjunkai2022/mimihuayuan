.class public final synthetic Lf/i/a/a/w0/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/w0/o$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/w0/o$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/f;->a:Lf/i/a/a/w0/o$a;

    iput p2, p0, Lf/i/a/a/w0/f;->b:I

    iput-wide p3, p0, Lf/i/a/a/w0/f;->c:J

    iput-wide p5, p0, Lf/i/a/a/w0/f;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lf/i/a/a/w0/f;->a:Lf/i/a/a/w0/o$a;

    iget v1, p0, Lf/i/a/a/w0/f;->b:I

    iget-wide v2, p0, Lf/i/a/a/w0/f;->c:J

    iget-wide v4, p0, Lf/i/a/a/w0/f;->d:J

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/w0/o$a;->c(IJJ)V

    return-void
.end method
