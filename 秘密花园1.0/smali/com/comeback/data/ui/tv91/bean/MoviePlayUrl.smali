.class public Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;
.super Lf/e/a/f/j;
.source "MoviePlayUrl.java"


# instance fields
.field public Code:Ljava/lang/String;

.field public Message:Ljava/lang/String;

.field public Result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;->Message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;->Result:I

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;->Code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;->Message:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/MoviePlayUrl;->Result:I

    return-void
.end method
