.class final Lio/teak/sdk/TeakInstance$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakInstance;-><init>(Landroid/app/Activity;Lio/teak/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakInstance;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lio/teak/sdk/TeakInstance$2;->a:Lio/teak/sdk/TeakInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 3
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/e;

    .line 82
    iget-object v1, v0, Lio/teak/sdk/a/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$2;->a:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->sdkRaven:Lio/teak/sdk/f/a;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lio/teak/sdk/TeakInstance$2;->a:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->sdkRaven:Lio/teak/sdk/f/a;

    iget-object v2, v0, Lio/teak/sdk/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/teak/sdk/f/a;->a(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v1, v0, Lio/teak/sdk/a/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/teak/sdk/TeakInstance$2;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v1}, Lio/teak/sdk/TeakInstance;->access$100(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/f/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lio/teak/sdk/TeakInstance$2;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v1}, Lio/teak/sdk/TeakInstance;->access$100(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/f/a;

    move-result-object v1

    iget-object v0, v0, Lio/teak/sdk/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f/a;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$2;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0}, Lio/teak/sdk/TeakInstance;->access$100(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/f/a;->a()V

    .line 93
    :cond_1
    return-void
.end method
