.class public Lcom/tencent/smtt/utils/p$a;
.super Ljava/lang/Object;
.source "TbsCopyVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/utils/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/utils/p;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/utils/p;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/smtt/utils/p$a;->a:Lcom/tencent/smtt/utils/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/smtt/utils/p$a;->b:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lcom/tencent/smtt/utils/p$a;->c:J

    .line 4
    iput-wide p5, p0, Lcom/tencent/smtt/utils/p$a;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/smtt/utils/p$a;->c:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/smtt/utils/p$a;->d:J

    return-wide v0
.end method
