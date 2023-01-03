.class public Lcom/comeback/data/ui/main/bean/HomeBean;
.super Lf/e/a/f/j;
.source "HomeBean.java"


# instance fields
.field public channelString:Ljava/lang/String;

.field public describe:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public real:Z

.field public res:I

.field public task:Lcom/comeback/data/ui/main/bean/InstallTask;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->name:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->res:I

    .line 5
    iput p3, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->name:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->res:I

    .line 9
    iput p3, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->type:I

    .line 10
    iput-object p4, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->describe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->name:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->res:I

    .line 14
    iput p3, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->type:I

    .line 15
    iput-object p4, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->describe:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannelString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->channelString:Ljava/lang/String;

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->res:I

    return v0
.end method

.method public getTask()Lcom/comeback/data/ui/main/bean/InstallTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->task:Lcom/comeback/data/ui/main/bean/InstallTask;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isReal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->real:Z

    return v0
.end method

.method public needInstall()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setChannelString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->channelString:Ljava/lang/String;

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->describe:Ljava/lang/String;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setReal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->real:Z

    return-void
.end method

.method public setRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->res:I

    return-void
.end method

.method public setTask(Lcom/comeback/data/ui/main/bean/InstallTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->task:Lcom/comeback/data/ui/main/bean/InstallTask;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/main/bean/HomeBean;->url:Ljava/lang/String;

    return-void
.end method
