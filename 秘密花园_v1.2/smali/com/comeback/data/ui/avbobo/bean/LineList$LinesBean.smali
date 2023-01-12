.class public Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;
.super Ljava/lang/Object;
.source "LineList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/avbobo/bean/LineList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinesBean"
.end annotation


# instance fields
.field public is_default:Z

.field public line_id:Ljava/lang/String;

.field public line_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;->line_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLine_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;->line_name:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_default()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;->is_default:Z

    return v0
.end method

.method public setIs_default(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;->is_default:Z

    return-void
.end method

.method public setLine_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;->line_id:Ljava/lang/String;

    return-void
.end method

.method public setLine_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/avbobo/bean/LineList$LinesBean;->line_name:Ljava/lang/String;

    return-void
.end method
