.class public final synthetic Lf/i/a/a/n1/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/n1/s$a;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/n1/s$a;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/n1/c;->a:Lf/i/a/a/n1/s$a;

    iput p2, p0, Lf/i/a/a/n1/c;->b:I

    iput p3, p0, Lf/i/a/a/n1/c;->c:I

    iput p4, p0, Lf/i/a/a/n1/c;->d:I

    iput p5, p0, Lf/i/a/a/n1/c;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lf/i/a/a/n1/c;->a:Lf/i/a/a/n1/s$a;

    iget v1, p0, Lf/i/a/a/n1/c;->b:I

    iget v2, p0, Lf/i/a/a/n1/c;->c:I

    iget v3, p0, Lf/i/a/a/n1/c;->d:I

    iget v4, p0, Lf/i/a/a/n1/c;->e:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/i/a/a/n1/s$a;->g(IIIF)V

    return-void
.end method
