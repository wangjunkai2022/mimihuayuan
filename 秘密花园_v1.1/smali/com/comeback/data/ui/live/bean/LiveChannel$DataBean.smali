.class public Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;
.super Ljava/lang/Object;
.source "LiveChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/live/bean/LiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;
    }
.end annotation


# instance fields
.field public lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/live/bean/LiveChannel;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/live/bean/LiveChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;->this$0:Lcom/comeback/data/ui/live/bean/LiveChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;->lists:Ljava/util/List;

    return-object v0
.end method

.method public setLists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/live/bean/LiveChannel$DataBean;->lists:Ljava/util/List;

    return-void
.end method
