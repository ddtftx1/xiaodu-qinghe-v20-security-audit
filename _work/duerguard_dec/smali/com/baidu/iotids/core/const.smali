.class public final Lcom/baidu/iotids/core/const;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public break:Ljava/lang/String;

.field public case:I

.field public else:I

.field public for:Z

.field public goto:I

.field public if:I

.field public new:I

.field public this:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/iotids/core/const;->if:I

    const-string v1, "present"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/iotids/core/const;->for:Z

    const-string v1, "health"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/iotids/core/const;->new:I

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/iotids/core/const;->try:I

    const-string v1, "scale"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/iotids/core/const;->case:I

    const-string v1, "plugged"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/iotids/core/const;->else:I

    const-string v1, "voltage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/iotids/core/const;->goto:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/baidu/iotids/core/const;->goto:I

    :cond_0
    const-string v1, "temperature"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/iotids/core/const;->this:I

    const-string v0, "technology"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/iotids/core/const;->break:Ljava/lang/String;

    return-void
.end method

.method public static for(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "Wireless"

    return-object p0

    :cond_1
    const-string p0, "USB Port"

    return-object p0

    :cond_2
    const-string p0, "AC Charger"

    return-object p0

    :cond_3
    const-string p0, "Battery"

    return-object p0
.end method

.method public static if(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "Cold"

    return-object p0

    :pswitch_1
    const-string p0, "Unspecified Failure"

    return-object p0

    :pswitch_2
    const-string p0, "Over Voltage"

    return-object p0

    :pswitch_3
    const-string p0, "Dead"

    return-object p0

    :pswitch_4
    const-string p0, "Overheat"

    return-object p0

    :pswitch_5
    const-string p0, "Good"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static new(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-string p0, "Full"

    return-object p0

    :cond_1
    const-string p0, "Not Charging"

    return-object p0

    :cond_2
    const-string p0, "Discharging"

    return-object p0

    :cond_3
    const-string p0, "Charging"

    return-object p0
.end method


# virtual methods
.method public break()I
    .locals 1

    iget v0, p0, Lcom/baidu/iotids/core/const;->goto:I

    return v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/baidu/iotids/core/const;->if:I

    invoke-static {v0}, Lcom/baidu/iotids/core/const;->new(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/iotids/core/const;->break:Ljava/lang/String;

    return-object v0
.end method

.method public for()I
    .locals 2

    iget v0, p0, Lcom/baidu/iotids/core/const;->try:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/baidu/iotids/core/const;->case:I

    if-ltz v1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public goto()D
    .locals 4

    iget v0, p0, Lcom/baidu/iotids/core/const;->this:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/baidu/iotids/utils/Utils;->if(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/baidu/iotids/core/const;->new:I

    invoke-static {v0}, Lcom/baidu/iotids/core/const;->if(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public new()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/iotids/core/const;->for:Z

    return v0
.end method

.method public this()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/baidu/iotids/core/const;->else:I

    invoke-static {v0}, Lcom/baidu/iotids/core/const;->for(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Lcom/baidu/iotids/core/const;->case:I

    return v0
.end method
