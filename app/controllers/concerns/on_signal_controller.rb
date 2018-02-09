module OnSignalController

    extend ActiveSupport::Concern

    included do
        before_action :set_onsignal
    end

    def set_onsignal_owner
        current_user if current_user
    end

    private

    def set_onsignal
        unless cookies[:oneSignalPlayerId].nil?
            onesignal_player_id = cookies[:oneSignalPlayerId]
            device = OnSignal.configuration.const_name.constantize.find_or_create_by! onesignal_id: onesignal_player_id
            device.onesignal_permission = cookies[:oneSignalPlayerPermission]
            device.last_used = Time.now
            device.owner = set_device_owner
            device.save!
        end
    end

end