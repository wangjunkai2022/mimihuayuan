.class public Lf/e/a/j/n0/b/a;
.super Lcom/comeback/data/base/BaseRefreshFragment$a;
.source "LiveFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshFragment$a<",
        "Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/tomato/fragment/LiveFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tomato/fragment/LiveFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/n0/b/a;->f:Lcom/comeback/data/ui/tomato/fragment/LiveFragment;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshFragment$a;-><init>(Lcom/comeback/data/base/BaseRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/comeback/data/ui/tomato/bean/TomatoLiveBase;->getJsonData()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lf/i/b/j;

    invoke-direct {v0}, Lf/i/b/j;-><init>()V

    const-class v1, Lcom/comeback/data/ui/tomato/bean/LiveList;

    invoke-virtual {v0, p1, v1}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/tomato/bean/LiveList;

    .line 4
    iget-object v0, p0, Lf/e/a/j/n0/b/a;->f:Lcom/comeback/data/ui/tomato/fragment/LiveFragment;

    invoke-static {v0}, Lcom/comeback/data/ui/tomato/fragment/LiveFragment;->m(Lcom/comeback/data/ui/tomato/fragment/LiveFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/tomato/bean/LiveList;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    return-void
.end method
