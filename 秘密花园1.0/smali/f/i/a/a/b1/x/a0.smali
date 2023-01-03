.class public final Lf/i/a/a/b1/x/a0;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field public final a:Lf/i/a/a/m1/e0;

.field public final b:Lf/i/a/a/m1/u;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/m1/e0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lf/i/a/a/m1/e0;-><init>(J)V

    iput-object v0, p0, Lf/i/a/a/b1/x/a0;->a:Lf/i/a/a/m1/e0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lf/i/a/a/b1/x/a0;->f:J

    .line 4
    iput-wide v0, p0, Lf/i/a/a/b1/x/a0;->g:J

    .line 5
    iput-wide v0, p0, Lf/i/a/a/b1/x/a0;->h:J

    .line 6
    new-instance v0, Lf/i/a/a/m1/u;

    invoke-direct {v0}, Lf/i/a/a/m1/u;-><init>()V

    iput-object v0, p0, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    return-void
.end method


# virtual methods
.method public final a(Lf/i/a/a/b1/d;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lf/i/a/a/b1/x/a0;->b:Lf/i/a/a/m1/u;

    sget-object v1, Lf/i/a/a/m1/h0;->f:[B

    invoke-virtual {v0, v1}, Lf/i/a/a/m1/u;->x([B)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/i/a/a/b1/x/a0;->c:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lf/i/a/a/b1/d;->f:I

    return v0
.end method
