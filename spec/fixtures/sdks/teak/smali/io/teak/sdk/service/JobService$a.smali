.class final Lio/teak/sdk/service/JobService$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/service/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/firebase/jobdispatcher/JobParameters;

.field private synthetic b:Lio/teak/sdk/service/JobService;


# direct methods
.method constructor <init>(Lio/teak/sdk/service/JobService;Ljava/util/concurrent/Callable;Lcom/firebase/jobdispatcher/JobParameters;)V
    .locals 0
    .param p2    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/firebase/jobdispatcher/JobParameters;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/firebase/jobdispatcher/JobParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lio/teak/sdk/service/JobService$a;->b:Lio/teak/sdk/service/JobService;

    .line 91
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 92
    iput-object p3, p0, Lio/teak/sdk/service/JobService$a;->a:Lcom/firebase/jobdispatcher/JobParameters;

    .line 93
    return-void
.end method


# virtual methods
.method protected final done()V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 100
    invoke-virtual {p0}, Lio/teak/sdk/service/JobService$a;->isCancelled()Z

    move-result v1

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lio/teak/sdk/service/JobService$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    .line 105
    :goto_1
    iget-object v1, p0, Lio/teak/sdk/service/JobService$a;->b:Lio/teak/sdk/service/JobService;

    iget-object v2, p0, Lio/teak/sdk/service/JobService$a;->a:Lcom/firebase/jobdispatcher/JobParameters;

    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/service/JobService;->jobTaskCompleted(Lcom/firebase/jobdispatcher/JobParameters;Z)V

    .line 106
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
