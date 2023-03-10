.class public Lcom/comeback/data/ui/ds/RankActivity$a;
.super Lm/j;
.source "RankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/RankActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ds/bean/RankBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ds/RankActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/RankActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/RankActivity$a;->e:Lcom/comeback/data/ui/ds/RankActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ds/bean/RankBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ds/RankActivity$a;->e:Lcom/comeback/data/ui/ds/RankActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/ds/RankActivity;->n(Lcom/comeback/data/ui/ds/RankActivity;Lcom/comeback/data/ui/ds/bean/RankBean;)V

    return-void
.end method
