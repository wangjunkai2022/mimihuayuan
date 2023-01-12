.class public final synthetic Lf/i/a/a/w0/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/w0/o$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/w0/o$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/w0/b;->a:Lf/i/a/a/w0/o$a;

    iput-object p2, p0, Lf/i/a/a/w0/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Lf/i/a/a/w0/b;->c:J

    iput-wide p5, p0, Lf/i/a/a/w0/b;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lf/i/a/a/w0/b;->a:Lf/i/a/a/w0/o$a;

    iget-object v1, p0, Lf/i/a/a/w0/b;->b:Ljava/lang/String;

    iget-wide v2, p0, Lf/i/a/a/w0/b;->c:J

    iget-wide v4, p0, Lf/i/a/a/w0/b;->d:J

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/w0/o$a;->d(Ljava/lang/String;JJ)V

    return-void
.end method
