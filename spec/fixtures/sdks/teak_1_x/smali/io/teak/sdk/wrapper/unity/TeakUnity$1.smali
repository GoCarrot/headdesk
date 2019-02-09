.class final Lio/teak/sdk/wrapper/unity/TeakUnity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/wrapper/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/wrapper/unity/TeakUnity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    sget-object v1, Lio/teak/sdk/wrapper/unity/TeakUnity$3;->a:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 56
    :goto_0
    invoke-static {v0, p2}, Lio/teak/sdk/wrapper/unity/TeakUnity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 49
    :pswitch_0
    const-string v0, "NotificationLaunch"

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "RewardClaimAttempt"

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
