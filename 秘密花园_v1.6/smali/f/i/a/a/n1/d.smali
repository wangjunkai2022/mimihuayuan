.class public final synthetic Lf/i/a/a/n1/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/i/a/a/n1/s$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lf/i/a/a/n1/s$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/n1/d;->a:Lf/i/a/a/n1/s$a;

    iput-object p2, p0, Lf/i/a/a/n1/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Lf/i/a/a/n1/d;->c:J

    iput-wide p5, p0, Lf/i/a/a/n1/d;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lf/i/a/a/n1/d;->a:Lf/i/a/a/n1/s$a;

    iget-object v1, p0, Lf/i/a/a/n1/d;->b:Ljava/lang/String;

    iget-wide v2, p0, Lf/i/a/a/n1/d;->c:J

    iget-wide v4, p0, Lf/i/a/a/n1/d;->d:J

    invoke-virtual/range {v0 .. v5}, Lf/i/a/a/n1/s$a;->a(Ljava/lang/String;JJ)V

    return-void
.end method
