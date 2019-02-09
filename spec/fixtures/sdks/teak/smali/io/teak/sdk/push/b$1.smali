.class final Lio/teak/sdk/push/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/push/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/push/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/b;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lio/teak/sdk/push/b$1;->a:Lio/teak/sdk/push/b;

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
    .line 165
    iget-object v1, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 171
    :goto_1
    return-void

    .line 165
    :pswitch_0
    const-string v2, "LifecycleEvent.Resumed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :pswitch_1
    check-cast p1, Lio/teak/sdk/c/e;

    .line 168
    iget-object v0, p0, Lio/teak/sdk/push/b$1;->a:Lio/teak/sdk/push/b;

    iget-object v1, p1, Lio/teak/sdk/c/e;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/teak/sdk/push/b;->a(Lio/teak/sdk/push/b;Landroid/content/Context;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch -0x89510c7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
