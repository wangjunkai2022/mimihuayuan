.class public Lcom/tencent/smtt/sdk/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static DAY_COUNT:I


# instance fields
.field public a:Landroid/webkit/DateSorter;

.field public b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/DateSorter;->a()Z

    move-result v0

    const/4 v0, 0x5

    sput v0, Lcom/tencent/smtt/sdk/DateSorter;->DAY_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->c()Lcom/tencent/smtt/sdk/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/u;->h(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;->getBoundary(I)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1}, Landroid/webkit/DateSorter;->getBoundary(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndex(J)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;->getIndex(J)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result p1

    return p1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/smtt/sdk/t;->a()Lcom/tencent/smtt/sdk/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->b:Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/DateSorter;->a:Landroid/webkit/DateSorter;

    invoke-virtual {v0, p1}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
