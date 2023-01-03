.class public final synthetic Lf/i/a/a/n1/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/n1/s$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/n1/s$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/n1/g;->a:Lf/i/a/a/n1/s$a;

    iput p2, p0, Lf/i/a/a/n1/g;->b:I

    iput-wide p3, p0, Lf/i/a/a/n1/g;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lf/i/a/a/n1/g;->a:Lf/i/a/a/n1/s$a;

    iget v1, p0, Lf/i/a/a/n1/g;->b:I

    iget-wide v2, p0, Lf/i/a/a/n1/g;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lf/i/a/a/n1/s$a;->c(IJ)V

    return-void
.end method
