.class public Lcom/tencent/smtt/sdk/TbsReaderView;
.super Landroid/widget/FrameLayout;
.source "TbsReaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;
    }
.end annotation


# static fields
.field public static final IS_BAR_ANIMATING:Ljava/lang/String; = "is_bar_animating"

.field public static final IS_BAR_SHOWING:Ljava/lang/String; = "is_bar_show"

.field public static final IS_INTO_DOWNLOADING:Ljava/lang/String; = "into_downloading"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final KEY_TEMP_PATH:Ljava/lang/String; = "tempPath"

.field public static final READER_CHANNEL_DOC_ID:I = 0x2ad5

.field public static final READER_CHANNEL_PDF_ID:I = 0x2a52

.field public static final READER_CHANNEL_PPT_ID:I = 0x2a51

.field public static final READER_CHANNEL_TXT_ID:I = 0x2a53

.field public static final READER_STATISTICS_COUNT_CANCEL_LOADED_BTN:Ljava/lang/String; = "AHNG802"

.field public static final READER_STATISTICS_COUNT_CLICK_LOADED_BTN:Ljava/lang/String; = "AHNG801"

.field public static final READER_STATISTICS_COUNT_DOC_INTO_BROWSER:Ljava/lang/String; = "AHNG829"

.field public static final READER_STATISTICS_COUNT_DOC_INTO_DIALOG:Ljava/lang/String; = "AHNG827"

.field public static final READER_STATISTICS_COUNT_DOC_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG828"

.field public static final READER_STATISTICS_COUNT_DOC_SEARCH_BTN:Ljava/lang/String; = "AHNG826"

.field public static final READER_STATISTICS_COUNT_PDF_FOLDER_BTN:Ljava/lang/String; = "AHNG810"

.field public static final READER_STATISTICS_COUNT_PDF_INTO_BROWSER:Ljava/lang/String; = "AHNG813"

.field public static final READER_STATISTICS_COUNT_PDF_INTO_DIALOG:Ljava/lang/String; = "AHNG811"

.field public static final READER_STATISTICS_COUNT_PDF_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG812"

.field public static final READER_STATISTICS_COUNT_PPT_INTO_BROWSER:Ljava/lang/String; = "AHNG809"

.field public static final READER_STATISTICS_COUNT_PPT_INTO_DIALOG:Ljava/lang/String; = "AHNG807"

.field public static final READER_STATISTICS_COUNT_PPT_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG808"

.field public static final READER_STATISTICS_COUNT_PPT_PLAY_BTN:Ljava/lang/String; = "AHNG806"

.field public static final READER_STATISTICS_COUNT_RETRY_BTN:Ljava/lang/String; = "AHNG803"

.field public static final READER_STATISTICS_COUNT_TXT_INTO_BROWSER:Ljava/lang/String; = "AHNG817"

.field public static final READER_STATISTICS_COUNT_TXT_INTO_DIALOG:Ljava/lang/String; = "AHNG815"

.field public static final READER_STATISTICS_COUNT_TXT_INTO_DOWNLOAD:Ljava/lang/String; = "AHNG816"

.field public static final READER_STATISTICS_COUNT_TXT_NOVEL_BTN:Ljava/lang/String; = "AHNG814"

.field public static final TAG:Ljava/lang/String; = "TbsReaderView"

.field public static f:Z = false

.field public static gReaderPackName:Ljava/lang/String; = ""

.field public static gReaderPackVersion:Ljava/lang/String; = ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tencent/smtt/sdk/ReaderWizard;

.field public c:Ljava/lang/Object;

.field public d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

.field public e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    .line 4
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    .line 6
    iput-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    .line 7
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 8
    iput-object p2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->d:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    .line 9
    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    .line 10
    new-instance p1, Lcom/tencent/smtt/sdk/TbsReaderView$1;

    invoke-direct {p1, p0}, Lcom/tencent/smtt/sdk/TbsReaderView$1;-><init>(Lcom/tencent/smtt/sdk/TbsReaderView;)V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "error: unexpect context(none Activity)"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/tencent/smtt/sdk/d;->a(Landroid/content/Context;ZZ)V

    .line 3
    invoke-static {v2}, Lcom/tencent/smtt/sdk/d;->a(Z)Lcom/tencent/smtt/sdk/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/d;->b()Z

    move-result p0

    sput-boolean p0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    .line 4
    :cond_0
    sget-boolean p0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    return p0
.end method

.method public static getResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->getResDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getResString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->getResString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static isSupportExt(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/tencent/smtt/sdk/ReaderWizard;->isSupportCurrentPlatform(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->isSupportExt(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public a()Z
    .locals 4

    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->e:Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;

    invoke-direct {v1, v2}, Lcom/tencent/smtt/sdk/ReaderWizard;-><init>(Lcom/tencent/smtt/sdk/TbsReaderView$ReaderCallback;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ReaderWizard;->getTbsReader()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/ReaderWizard;->initTbsReader(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return v0
.end method

.method public doCommand(Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/tencent/smtt/sdk/ReaderWizard;->doCommand(Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public downloadPlugin(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/tencent/smtt/sdk/ReaderWizard;->checkPlugin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onSizeChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/smtt/sdk/ReaderWizard;->onSizeChanged(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/ReaderWizard;->destroy(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/tencent/smtt/sdk/TbsReaderView;->f:Z

    return-void
.end method

.method public openFile(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/a/c;->c(Landroid/content/Context;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/a/c;->b(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    const-string v1, "browser6.0"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-wide/32 v0, 0x5d1a79

    const-wide/32 v2, 0x94ed0

    .line 5
    iget-object v4, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/tencent/smtt/sdk/a/c;->a(Landroid/content/Context;JJ)Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/a/c;->b(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    const-string v1, "browser6.1"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/tencent/smtt/sdk/ReaderWizard;->openFile(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Bundle;Landroid/widget/FrameLayout;)Z

    move-result p1

    :cond_1
    :goto_0
    return-void
.end method

.method public preOpen(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/smtt/sdk/TbsReaderView;->isSupportExt(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/TbsReaderView;->a()Z

    move-result v0

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 4
    iget-object p2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/utils/Apn;->getApnType(Landroid/content/Context;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->a:Landroid/content/Context;

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/tencent/smtt/sdk/ReaderWizard;->checkPlugin(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public userStatistics(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->b:Lcom/tencent/smtt/sdk/ReaderWizard;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/tencent/smtt/sdk/TbsReaderView;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/smtt/sdk/ReaderWizard;->userStatistics(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
