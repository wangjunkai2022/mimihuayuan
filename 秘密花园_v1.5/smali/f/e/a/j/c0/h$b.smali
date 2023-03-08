.class public Lf/e/a/j/c0/h$b;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/j/c0/h;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Lf/e/a/j/c0/h;Lcom/tencent/smtt/sdk/WebView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lf/e/a/j/c0/h$b;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/e/a/j/c0/h$b;->a:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "XQMVBRgQS1oDEg4RGRhDDlsHDgEFBwRXHAVBCh0EF0VQBxchBxZUVh0SRyUBKQ8KRBEtBQYWEREeABZOQwMFQ1IOBgkOHU0dHwNaAAwCQlYHSwYIDh5cXQc9BDpWGgIZUgwXKgQXXB0BA1kIDg8gA14OB0wOH1xeFghAPEg3SlBBAxFEGAAZDlMCWwQNBwYFQ0wEAR82VVYeA1oTCygaKFsDEBclElRWW0RACAhISlBeBEsXGF1VVh0BQA9ZV1NCRBE4VDZdSVIBA1oTNgUHDhkQBgkEBVxwGw9YA1AZEDAHP0pfYQVYQVMDWAIVDw0fCgYMBx4eXF0HSFMCDC8PDloHDRAYMUBwHwdHFDYLDg4fQBYXDgEURxwWFk5DAwVDUg4GCQ4dTR0fA1oADAJCVgdLBggOHlxdBz0EOlYaAhlSDBcqBBdcHQEDWQgODyADXg4HTA4fXF4WCEA8SDdKUD0UAhZLAEoTTkZQCBsfDg5ZFk0DDgd8XxYLUQkMGSESdA4CFxg9WF4WThYSCw8RRkMNE0ZCSFBVWxVHSRQPDQxDCkJZW1pKQChWaUkICxEOWRYtCw8WF0EWC1sRHSkLAlsGSxcYKAluWl0="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
